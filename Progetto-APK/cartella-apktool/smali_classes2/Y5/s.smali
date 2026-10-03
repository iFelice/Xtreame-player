.class public final LY5/s;
.super LY5/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLY5/t;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3}, LY5/r;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    const-string p2, "-bin"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    xor-int/2addr p3, v0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    aput-object p2, v1, v0

    .line 24
    .line 25
    const-string p1, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 26
    .line 27
    invoke-static {p1, v1}, Ld2/v;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p3
.end method
