<?php

namespace App\Http\Controllers;

use App\Models\Idea;
use Illuminate\Http\Request;

class FeedController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        $user = auth()->user();

        $followingIds = $user->followings()->pluck("user_id");

        $ideas = Idea::whereIn('user_id', $followingIds)->orderBy('created_at', 'DESC');

        if (request()->has('search')) {
            $ideas = $ideas->search(request('search', ''));
        }

        return view("dashboard", ["ideas" => $ideas->paginate(5)]);
    }
}
