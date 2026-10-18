.class public final Lv6/d;
.super LN/B;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LE6/a;


# instance fields
.field public final synthetic K:I


# direct methods
.method public constructor <init>(Lv6/f;I)V
    .locals 2

    .line 1
    iput p2, p0, Lv6/d;->K:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "map"

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, LN/B;-><init>(Lv6/f;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, LN/B;-><init>(Lv6/f;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, LN/B;-><init>(Lv6/f;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lv6/d;->K:I

    .line 2
    .line 3
    iget-object v1, p0, LN/B;->J:Ljava/io/Serializable;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LN/B;->a()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, LN/B;->G:I

    .line 12
    .line 13
    check-cast v1, Lv6/f;

    .line 14
    .line 15
    iget v2, v1, Lv6/f;->L:I

    .line 16
    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    iput v2, p0, LN/B;->G:I

    .line 22
    .line 23
    iput v0, p0, LN/B;->H:I

    .line 24
    .line 25
    iget-object v0, v1, Lv6/f;->H:[Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, LN/B;->H:I

    .line 31
    .line 32
    aget-object v0, v0, v1

    .line 33
    .line 34
    invoke-virtual {p0}, LN/B;->e()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :pswitch_0
    invoke-virtual {p0}, LN/B;->a()V

    .line 45
    .line 46
    .line 47
    iget v0, p0, LN/B;->G:I

    .line 48
    .line 49
    check-cast v1, Lv6/f;

    .line 50
    .line 51
    iget v2, v1, Lv6/f;->L:I

    .line 52
    .line 53
    if-ge v0, v2, :cond_1

    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x1

    .line 56
    .line 57
    iput v2, p0, LN/B;->G:I

    .line 58
    .line 59
    iput v0, p0, LN/B;->H:I

    .line 60
    .line 61
    iget-object v1, v1, Lv6/f;->G:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v0, v1, v0

    .line 64
    .line 65
    invoke-virtual {p0}, LN/B;->e()V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :pswitch_1
    invoke-virtual {p0}, LN/B;->a()V

    .line 76
    .line 77
    .line 78
    iget v0, p0, LN/B;->G:I

    .line 79
    .line 80
    check-cast v1, Lv6/f;

    .line 81
    .line 82
    iget v2, v1, Lv6/f;->L:I

    .line 83
    .line 84
    if-ge v0, v2, :cond_2

    .line 85
    .line 86
    add-int/lit8 v2, v0, 0x1

    .line 87
    .line 88
    iput v2, p0, LN/B;->G:I

    .line 89
    .line 90
    iput v0, p0, LN/B;->H:I

    .line 91
    .line 92
    new-instance v2, Lv6/e;

    .line 93
    .line 94
    invoke-direct {v2, v1, v0}, Lv6/e;-><init>(Lv6/f;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, LN/B;->e()V

    .line 98
    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
