.class public final LV5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LV5/b;

.field public b:LF/i;


# virtual methods
.method public final a(LW5/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, LV5/a;->b:LF/i;

    .line 2
    .line 3
    iget-object v1, v0, LF/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Z

    .line 6
    .line 7
    iget v2, p1, LW5/b;->a:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput-boolean v3, v1, v2

    .line 11
    .line 12
    iget-object v1, p0, LV5/a;->a:LV5/b;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-ge v4, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v4}, LF/i;->v(I)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/2addr v5, v6

    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 v2, v5, 0x1

    .line 29
    .line 30
    iget-object v0, v0, LF/i;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/List;

    .line 33
    .line 34
    iget p1, p1, LW5/b;->a:I

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, LW5/a;

    .line 41
    .line 42
    iget-object p1, p1, LW5/a;->H:Ljava/util/List;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    iget-object p1, v1, LO1/C;->G:LO1/D;

    .line 52
    .line 53
    invoke-virtual {p1, v5}, LO1/D;->b(I)V

    .line 54
    .line 55
    .line 56
    if-lez v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v2, v3}, LO1/D;->d(II)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final b(LW5/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, LV5/a;->b:LF/i;

    .line 2
    .line 3
    iget-object v1, v0, LF/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Z

    .line 6
    .line 7
    iget v2, p1, LW5/b;->a:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    aput-boolean v3, v1, v2

    .line 11
    .line 12
    iget-object v1, p0, LV5/a;->a:LV5/b;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge v4, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v4}, LF/i;->v(I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    add-int/2addr v5, v6

    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    add-int/lit8 v2, v5, 0x1

    .line 30
    .line 31
    iget-object v0, v0, LF/i;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    iget p1, p1, LW5/b;->a:I

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, LW5/a;

    .line 42
    .line 43
    iget-object p1, p1, LW5/a;->H:Ljava/util/List;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_1
    iget-object p1, v1, LO1/C;->G:LO1/D;

    .line 53
    .line 54
    invoke-virtual {p1, v5}, LO1/D;->b(I)V

    .line 55
    .line 56
    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, LO1/D;->c(II)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method
