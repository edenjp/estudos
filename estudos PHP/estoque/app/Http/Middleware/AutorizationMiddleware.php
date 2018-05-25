<?php

namespace estoque\Http\Middleware;

use Closure;

class AutorizationMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      if (!$request->is('login') && \Auth::guest()) {
          return redirect('login');
      }

        return $next($request);
    }
}
