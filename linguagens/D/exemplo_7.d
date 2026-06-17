import std.stdio;
void main() {
    try {
        throw new Exception("Erro");
    } catch (Exception e) {
        writeln(e.msg);
    }
}