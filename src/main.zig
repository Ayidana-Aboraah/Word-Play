const std = @import("std");

pub fn main() !void {
    // generate a letter
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        const alloc = gpa.allocator();
        var used_words = std.AutoHashMap([]u8, void).init(alloc);
        var idxs:[255]u8 = undefined; // In Theory, we could just use the undefined memory as indexes but that's just a theory
       
        // const seed = @truncate(u64, @bitCast(u128, std.time.nanoTimestamp()));
        // var prng = std.rand.DefaultPrng.init(seed);
        // prng.random().bytes(idxs);
        var running: bool = true;
        var buf: [255]u8 = undefined;
        var reader = std.io.bufferedReader(std.io.getStdIn().reader()).reader();
        while (running) {
            const  line = try reader.readUntilDelimiter(buf, '\n');
            // compare with word dp
            running = !std.mem.eql(u8, line, "qq");

        }
        
}
