# DRAFTime

## A custom draft tool that doesn't suck.

- Do you hate drafting with Yahoo, ESPN, or anyone else's online draft tool?
- Are you the only technologically sufficient member of your league?
- Do you wish you could have a simple export to deal with that automatically works with all the leagues?

Well then _DRAFTime_ might be for you.

DRAFTime requires Ruby and PostGres, but nothing fancy beyond that, I'm pretty sure. If you don't know what those are and how to install them, you shouldn't be using this application.

To get started:

- `clone` this repo locally
- `cd` to the repo
- `bundle install`
- `rake db:migrate`
- `rake db:seed`
- `rails s`
- Navigate to `localhost:3000`

## License Stuff

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
