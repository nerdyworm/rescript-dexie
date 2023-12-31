type t<'item>

@send
external count: t<'item> => promise<int> = "count"

@send external clone: t<'item> => t<'item> = "clone"

@send external delete: t<'item> => promise<unit> = "delete"

// 'a placeholder below is for if I model IDBCursor someday
@send external each: (t<'item>, ('item, 'a) => unit) => promise<unit> = "each"

@send external filter: (t<'item>, 'item => bool) => t<'item> = "filter"

@send
external first: t<'item> => promise<option<'item>> = "first"

@send
external last: t<'item> => promise<option<'item>> = "last"

@send external limit: (t<'item>, int) => t<'item> = "limit"

@send external modify: (t<'item>, 'changes) => promise<int> = "modify"

@send external offset: (t<'item>, int) => t<'item> = "offset"

@send
external sortBy: (t<'item>, string) => promise<array<'item>> = "sortBy"

@send
external toArray: t<'item> => promise<array<'item>> = "toArray"

@send external until: (t<'item>, 'item => bool) => t<'item> = "until"

@send external reverse: t<'item> => t<'item> = "sortBy"
