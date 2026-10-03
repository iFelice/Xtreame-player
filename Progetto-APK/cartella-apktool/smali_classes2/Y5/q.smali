.class public final LY5/q;
.super LY5/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;LY5/A;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, p2}, LY5/r;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v2, "-bin"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    xor-int/2addr v3, v0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const-string p1, "marshaller"

    .line 16
    .line 17
    invoke-static {p2, p1}, Ly4/k;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, v3, v1

    .line 27
    .line 28
    aput-object v2, v3, v0

    .line 29
    .line 30
    const-string p1, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 31
    .line 32
    invoke-static {p1, v3}, Ld2/v;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method
