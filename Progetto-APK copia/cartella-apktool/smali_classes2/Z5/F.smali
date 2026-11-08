.class public final LZ5/F;
.super LY5/d;
.source "SourceFile"


# virtual methods
.method public final i(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1}, LZ5/f;->p(I)Ljava/util/logging/Level;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    sget-object v1, LZ5/g;->a:Ljava/util/logging/Logger;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, LZ5/g;->a(LY5/d;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final varargs j(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1}, LZ5/f;->p(I)Ljava/util/logging/Level;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    sget-object v1, LZ5/g;->a:Ljava/util/logging/Logger;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {v0, p1, p2}, LZ5/g;->a(LY5/d;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
