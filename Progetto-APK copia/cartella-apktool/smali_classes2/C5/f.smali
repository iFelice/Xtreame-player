.class public final LC5/f;
.super LC5/m;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LC5/f;->h:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, LC5/m;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, LC5/f;->i:Ljava/lang/Object;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, LC5/m;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, LC5/e;

    .line 19
    .line 20
    invoke-direct {p1}, LC5/e;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, LC5/f;->i:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public static q(Lq5/m;)Lq5/m;
    .locals 5

    .line 1
    iget-object v0, p0, Lq5/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x30

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    new-instance v1, Lq5/m;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lq5/m;->c:[Lq5/o;

    .line 20
    .line 21
    sget-object v3, Lq5/a;->U:Lq5/a;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v0, v4, v2, v3}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lq5/m;->e:Ljava/util/Map;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lq5/m;->a(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v1

    .line 35
    :cond_1
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method


# virtual methods
.method public final b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, LC5/f;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_0
    iget-object v0, p0, LC5/f;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LC5/m;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, LC5/j;->b(Lm2/l;)Lq5/m;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, LC5/f;->q(Lq5/m;)Lq5/m;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 1

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, LC5/j;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object v0, p0, LC5/f;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LC5/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, LC5/j;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, LC5/f;->q(Lq5/m;)Lq5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 1

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, LC5/m;->d(ILw5/a;Ljava/util/Map;)Lq5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object v0, p0, LC5/f;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LC5/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, LC5/m;->d(ILw5/a;Ljava/util/Map;)Lq5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, LC5/f;->q(Lq5/m;)Lq5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lw5/a;[ILjava/lang/StringBuilder;)I
    .locals 9

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    iget-object v1, p0, LC5/f;->i:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, LC5/m;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2, p3}, LC5/m;->l(Lw5/a;[ILjava/lang/StringBuilder;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    check-cast v1, [I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aput v0, v1, v0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aput v0, v1, v2

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    aput v0, v1, v3

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    aput v0, v1, v3

    .line 28
    .line 29
    iget v3, p1, Lw5/a;->H:I

    .line 30
    .line 31
    aget p2, p2, v2

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_0
    sget-object v5, LC5/m;->f:[[I

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    if-ge v4, v6, :cond_1

    .line 38
    .line 39
    if-ge p2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v1, p2, v5}, LC5/m;->j(Lw5/a;[II[[I)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    add-int/lit8 v5, v5, 0x30

    .line 46
    .line 47
    int-to-char v5, v5

    .line 48
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    array-length v5, v1

    .line 52
    const/4 v6, 0x0

    .line 53
    :goto_1
    if-ge v6, v5, :cond_0

    .line 54
    .line 55
    aget v7, v1, v6

    .line 56
    .line 57
    add-int/2addr p2, v7

    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object v4, LC5/m;->e:[I

    .line 65
    .line 66
    const/4 v7, 0x5

    .line 67
    new-array v7, v7, [I

    .line 68
    .line 69
    invoke-static {p1, p2, v2, v4, v7}, LC5/m;->n(Lw5/a;IZ[I[I)[I

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    aget p2, p2, v2

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_2
    if-ge v2, v6, :cond_3

    .line 77
    .line 78
    if-ge p2, v3, :cond_3

    .line 79
    .line 80
    invoke-static {p1, v1, p2, v5}, LC5/m;->j(Lw5/a;[II[[I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, 0x30

    .line 85
    .line 86
    int-to-char v4, v4

    .line 87
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    array-length v4, v1

    .line 91
    const/4 v7, 0x0

    .line 92
    :goto_3
    if-ge v7, v4, :cond_2

    .line 93
    .line 94
    aget v8, v1, v7

    .line 95
    .line 96
    add-int/2addr p2, v8

    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    return p2

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(ILw5/a;[ILjava/util/Map;)Lq5/m;
    .locals 1

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, LC5/m;->m(ILw5/a;[ILjava/util/Map;)Lq5/m;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object v0, p0, LC5/f;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LC5/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, LC5/m;->m(ILw5/a;[ILjava/util/Map;)Lq5/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, LC5/f;->q(Lq5/m;)Lq5/m;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Lq5/a;
    .locals 1

    .line 1
    iget v0, p0, LC5/f;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lq5/a;->U:Lq5/a;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    sget-object v0, Lq5/a;->M:Lq5/a;

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
