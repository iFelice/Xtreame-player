.class public abstract LY5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "US-ASCII"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    sget-object v0, LY5/u;->c:LA4/c;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;LU4/b;)LY5/s;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x3a

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    sget-object v0, LY5/r;->c:Ljava/util/BitSet;

    .line 18
    .line 19
    new-instance v0, LY5/s;

    .line 20
    .line 21
    invoke-direct {v0, p0, v1, p1}, LY5/s;-><init>(Ljava/lang/String;ZLY5/t;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
