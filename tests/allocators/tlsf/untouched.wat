(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00,\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/tlsf/SL_BITS i32 (i32.const 5))
 (global $~lib/allocator/tlsf/SL_SIZE i32 (i32.const 32))
 (global $~lib/allocator/tlsf/SB_BITS i32 (i32.const 8))
 (global $~lib/allocator/tlsf/SB_SIZE i32 (i32.const 256))
 (global $~lib/allocator/tlsf/FL_BITS i32 (i32.const 22))
 (global $~lib/allocator/tlsf/FREE i32 (i32.const 1))
 (global $~lib/allocator/tlsf/LEFT_FREE i32 (i32.const 2))
 (global $~lib/allocator/tlsf/TAGS i32 (i32.const 3))
 (global $~lib/allocator/tlsf/Block.INFO i32 (i32.const 8))
 (global $~lib/allocator/tlsf/Block.MIN_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/Block.MAX_SIZE i32 (i32.const 1073741824))
 (global $~lib/allocator/tlsf/Root.SL_START i32 (i32.const 4))
 (global $~lib/allocator/tlsf/Root.SL_END i32 (i32.const 92))
 (global $~lib/allocator/tlsf/Root.HL_START i32 (i32.const 96))
 (global $~lib/allocator/tlsf/Root.HL_END i32 (i32.const 2912))
 (global $~lib/allocator/tlsf/Root.SIZE i32 (i32.const 2916))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 60))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.init" (func $~lib/memory/memory.init))
 (export "memory.drop" (func $~lib/memory/memory.drop))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (export "memory.repeat" (func $~lib/memory/memory.repeat))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (start $start)
 (func $start:~lib/allocator/tlsf (; 1 ;) (type $FUNCSIG$v)
  i32.const 1
  global.get $~lib/allocator/tlsf/SL_BITS
  i32.shl
  i32.const 32
  i32.le_s
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 114
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:assembly/index (; 2 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/tlsf
 )
 (func $~lib/memory/memory.init (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  unreachable
 )
 (func $~lib/memory/memory.drop (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  unreachable
 )
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 0
  local.get $1
  i32.store offset=2912
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 6 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 135
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 7 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 158
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 159
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Root#get:tailRef (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.load offset=2912
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 81
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 16
   i32.const 82
   i32.const 11
   call $~lib/env/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 419
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 11 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 149
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 150
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 129
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 249
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 251
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $5
   local.get $3
   i32.const 8
   i32.div_u
   local.set $6
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $5
   local.get $3
   local.get $5
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $6
   local.get $5
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $5
  end
  local.get $1
  i32.load offset=4
  local.set $7
  local.get $1
  i32.load offset=8
  local.set $8
  local.get $7
  if
   local.get $7
   local.get $8
   i32.store offset=8
  end
  local.get $8
  if
   local.get $8
   local.get $7
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $5
  local.get $6
  call $~lib/allocator/tlsf/Root#getHead
  i32.eq
  if
   local.get $0
   local.get $5
   local.get $6
   local.get $8
   call $~lib/allocator/tlsf/Root#setHead
   local.get $8
   i32.eqz
   if
    local.get $0
    local.get $5
    call $~lib/allocator/tlsf/Root#getSLMap
    local.set $4
    local.get $0
    local.get $5
    local.get $4
    i32.const 1
    local.get $6
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $4
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $5
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 73
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 16
   i32.const 74
   i32.const 11
   call $~lib/env/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 325
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 326
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 327
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 4
  i32.sub
  local.get $1
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 180
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 182
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 184
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 16
   i32.const 188
   i32.const 23
   call $~lib/env/abort
   unreachable
  else   
   local.get $4
  end
  local.set $5
  local.get $5
  i32.load
  local.set $6
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  if
   local.get $0
   local.get $5
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $2
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $6
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $2
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.set $5
   local.get $5
   i32.load
   local.set $6
  end
  local.get $2
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 16
    i32.const 202
    i32.const 24
    call $~lib/env/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   i32.load
   local.set $7
   local.get $7
   global.get $~lib/allocator/tlsf/FREE
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 16
    i32.const 204
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#remove
   local.get $4
   local.get $7
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $2
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $7
   i32.store
   local.get $4
   local.set $1
   local.get $7
   local.set $2
  end
  local.get $5
  local.get $6
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $1
  local.get $5
  call $~lib/allocator/tlsf/Root#setJump
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $7
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $7
  end
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 217
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $3
   i32.const 8
   i32.div_u
   local.set $9
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $8
   local.get $3
   local.get $8
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  local.get $0
  local.get $8
  local.get $9
  call $~lib/allocator/tlsf/Root#getHead
  local.set $10
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $10
  i32.store offset=8
  local.get $10
  if
   local.get $10
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $8
  local.get $9
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $8
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 17 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 368
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 369
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 370
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Root#get:tailRef
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 16
    i32.const 375
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $1
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $1
    local.get $3
    i32.load
    local.set $4
   end
  else   
   local.get $1
   local.get $0
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 16
    i32.const 384
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $5
  i32.const 2
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.mul
  i32.sub
  local.set $6
  local.get $1
  local.set $7
  local.get $7
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.or
  local.get $4
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.or
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $5
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.sub
  local.set $8
  local.get $8
  i32.const 0
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#set:tailRef
  local.get $0
  local.get $7
  call $~lib/allocator/tlsf/Root#insert
  i32.const 1
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 413
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/ffs<u32> (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 413
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $1
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 287
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $3
   local.get $1
   i32.const 8
   i32.div_u
   local.set $4
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.set $3
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $4
   local.get $3
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $3
   local.get $4
   global.get $~lib/allocator/tlsf/SL_SIZE
   i32.const 1
   i32.sub
   i32.lt_u
   if
    local.get $4
    i32.const 1
    i32.add
    local.set $4
   else    
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    i32.const 0
    local.set $4
   end
  end
  local.get $0
  local.get $3
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $4
  i32.shl
  i32.and
  local.set $5
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $3
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $2
   local.get $2
   i32.eqz
   if
    i32.const 0
    local.set $6
   else    
    local.get $2
    call $~lib/allocator/tlsf/ffs<usize>
    local.set $3
    local.get $0
    local.get $3
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $7
    if (result i32)
     local.get $7
    else     
     i32.const 0
     i32.const 16
     i32.const 314
     i32.const 16
     call $~lib/env/abort
     unreachable
    end
    local.set $5
    local.get $0
    local.get $3
    local.get $5
    call $~lib/allocator/tlsf/ffs<u32>
    call $~lib/allocator/tlsf/Root#getHead
    local.set $6
   end
  else   
   local.get $0
   local.get $3
   local.get $5
   call $~lib/allocator/tlsf/ffs<u32>
   call $~lib/allocator/tlsf/Root#getHead
   local.set $6
  end
  local.get $6
 )
 (func $~lib/allocator/tlsf/Root#use (; 21 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 339
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $2
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 340
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 341
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#remove
  local.get $3
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.and
   i32.or
   i32.store
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.add
   local.get $2
   i32.add
   local.set $4
   local.get $4
   local.get $5
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   global.get $~lib/allocator/tlsf/FREE
   i32.or
   i32.store
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 16
    i32.const 359
    i32.const 25
    call $~lib/env/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   local.get $4
   i32.load
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
  local.get $1
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
 )
 (func $~lib/memory/memory.allocate (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/allocator/tlsf/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   global.get $~lib/allocator/tlsf/ROOT
   local.set $2
   local.get $2
   i32.eqz
   if
    global.get $~lib/memory/HEAP_BASE
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    current_memory
    local.set $4
    local.get $3
    global.get $~lib/allocator/tlsf/Root.SIZE
    i32.add
    i32.const 65535
    i32.add
    i32.const 65535
    i32.const -1
    i32.xor
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $5
    local.get $4
    i32.gt_s
    local.tee $6
    if (result i32)
     local.get $5
     local.get $4
     i32.sub
     grow_memory
     i32.const 0
     i32.lt_s
    else     
     local.get $6
    end
    if
     unreachable
    end
    local.get $3
    local.tee $2
    global.set $~lib/allocator/tlsf/ROOT
    local.get $2
    i32.const 0
    call $~lib/allocator/tlsf/Root#set:tailRef
    local.get $2
    i32.const 0
    i32.store
    block $break|0
     i32.const 0
     local.set $6
     loop $repeat|0
      local.get $6
      global.get $~lib/allocator/tlsf/FL_BITS
      i32.lt_u
      i32.eqz
      br_if $break|0
      block
       local.get $2
       local.get $6
       i32.const 0
       call $~lib/allocator/tlsf/Root#setSLMap
       block $break|1
        i32.const 0
        local.set $7
        loop $repeat|1
         local.get $7
         global.get $~lib/allocator/tlsf/SL_SIZE
         i32.lt_u
         i32.eqz
         br_if $break|1
         local.get $2
         local.get $6
         local.get $7
         i32.const 0
         call $~lib/allocator/tlsf/Root#setHead
         local.get $7
         i32.const 1
         i32.add
         local.set $7
         br $repeat|1
         unreachable
        end
        unreachable
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $repeat|0
      unreachable
     end
     unreachable
    end
    local.get $2
    local.get $3
    global.get $~lib/allocator/tlsf/Root.SIZE
    i32.add
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    current_memory
    i32.const 16
    i32.shl
    call $~lib/allocator/tlsf/Root#addMemory
    drop
   end
   local.get $1
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.gt_u
   if
    unreachable
   end
   local.get $1
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.tee $5
   global.get $~lib/allocator/tlsf/Block.MIN_SIZE
   local.tee $4
   local.get $5
   local.get $4
   i32.gt_u
   select
   local.set $1
   local.get $2
   local.get $1
   call $~lib/allocator/tlsf/Root#search
   local.set $5
   local.get $5
   i32.eqz
   if
    current_memory
    local.set $4
    local.get $1
    i32.const 65535
    i32.add
    i32.const 65535
    i32.const -1
    i32.xor
    i32.and
    i32.const 16
    i32.shr_u
    local.set $3
    local.get $4
    local.tee $6
    local.get $3
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $3
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    current_memory
    local.set $7
    local.get $2
    local.get $4
    i32.const 16
    i32.shl
    local.get $7
    i32.const 16
    i32.shl
    call $~lib/allocator/tlsf/Root#addMemory
    drop
    local.get $2
    local.get $1
    call $~lib/allocator/tlsf/Root#search
    local.tee $8
    i32.eqz
    if (result i32)
     i32.const 0
     i32.const 16
     i32.const 472
     i32.const 12
     call $~lib/env/abort
     unreachable
    else     
     local.get $8
    end
    local.set $5
   end
   local.get $5
   i32.load
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   local.get $1
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 16
    i32.const 475
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   local.get $2
   local.get $5
   local.get $1
   call $~lib/allocator/tlsf/Root#use
  end
  return
 )
 (func $~lib/memory/memory.free (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $1
  local.get $1
  if
   global.get $~lib/allocator/tlsf/ROOT
   local.set $2
   local.get $2
   if
    local.get $1
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $3
    local.get $3
    i32.load
    local.set $4
    local.get $4
    global.get $~lib/allocator/tlsf/FREE
    i32.and
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 16
     i32.const 488
     i32.const 6
     call $~lib/env/abort
     unreachable
    end
    local.get $3
    local.get $4
    global.get $~lib/allocator/tlsf/FREE
    i32.or
    i32.store
    local.get $2
    local.get $1
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/memory/memory.reset (; 24 ;) (type $FUNCSIG$v)
  unreachable
 )
 (func $~lib/util/memory/memcpy (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 16
           i32.add
           local.set $1
           local.get $0
           i32.const 16
           i32.add
           local.set $0
           local.get $2
           i32.const 16
           i32.sub
           local.set $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 26 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $5
   if (result i32)
    local.get $5
   else    
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
   end
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $~lib/memory/memory.repeat (; 27 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.mul
  local.set $5
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i32.lt_u
    if
     block
      local.get $0
      local.get $4
      i32.add
      local.get $1
      local.get $2
      call $~lib/memory/memory.copy
      local.get $4
      local.get $2
      i32.add
      local.set $4
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.compare (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memcmp|inlined.0 (result i32)
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 0
     i32.ne
     local.tee $6
     if (result i32)
      local.get $5
      i32.load8_u
      local.get $4
      i32.load8_u
      i32.eq
     else      
      local.get $6
     end
     if
      block
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       local.get $4
       i32.const 1
       i32.add
       local.set $4
      end
      br $continue|0
     end
    end
   end
   local.get $3
   if (result i32)
    local.get $5
    i32.load8_u
    local.get $4
    i32.load8_u
    i32.sub
   else    
    i32.const 0
   end
  end
 )
 (func $start (; 29 ;) (type $FUNCSIG$v)
  call $start:assembly/index
 )
 (func $null (; 30 ;) (type $FUNCSIG$v)
 )
)
