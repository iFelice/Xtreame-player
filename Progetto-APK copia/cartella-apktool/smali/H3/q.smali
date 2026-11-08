.class public abstract LH3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LH3/b;

.field public final b:Ljava/lang/String;

.field public c:La3/b;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LH3/a;->c(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LH3/q;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, LH3/b;

    .line 10
    .line 11
    const-string v0, "MediaControlChannel"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p1, v0, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LH3/q;->a:LH3/b;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, LH3/q;->d:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(LH3/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, LH3/q;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-object v0, p0, LH3/q;->c:La3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, LH3/q;->a:LH3/b;

    .line 9
    .line 10
    iget-object v2, v1, LH3/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "Attempt to generate requestId without a sink"

    .line 13
    .line 14
    invoke-virtual {v1, v3, v0}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, La3/b;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :goto_0
    return-wide v0
.end method

.method public final c(JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, LH3/q;->c:La3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array p1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p2, p0, LH3/q;->a:LH3/b;

    .line 9
    .line 10
    iget-object p3, p2, LH3/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "Attempt to send text message without a sink"

    .line 13
    .line 14
    invoke-virtual {p2, v0, p1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v0, La3/b;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, LC3/I;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    check-cast v2, LC3/F;

    .line 29
    .line 30
    iget-object v3, p0, LH3/q;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v3}, LH3/a;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/high16 v5, 0x80000

    .line 46
    .line 47
    if-gt v4, v5, :cond_1

    .line 48
    .line 49
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, LC3/B;

    .line 54
    .line 55
    invoke-direct {v5, v2, v3, p3, v1}, LC3/B;-><init>(LC3/F;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iput-object v5, v4, LK3/r;->c:Ljava/lang/Object;

    .line 59
    .line 60
    const/16 p3, 0x20d5

    .line 61
    .line 62
    iput p3, v4, LK3/r;->a:I

    .line 63
    .line 64
    invoke-virtual {v4}, LK3/r;->a()LK3/O;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {v2, p3}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    new-instance v1, Lf6/c;

    .line 73
    .line 74
    const/4 v2, 0x6

    .line 75
    invoke-direct {v1, v0, v2, p1, p2}, Lf6/c;-><init>(Ljava/lang/Object;IJ)V

    .line 76
    .line 77
    .line 78
    check-cast p3, Lg4/r;

    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object p1, Lg4/j;->a:Lg4/q;

    .line 84
    .line 85
    invoke-virtual {p3, p1, v1}, Lg4/r;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    sget-object p2, LC3/F;->w:LH3/b;

    .line 92
    .line 93
    iget-object p3, p2, LH3/b;->a:Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "Message send failed. Message exceeds maximum size"

    .line 96
    .line 97
    invoke-virtual {p2, v0, p1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Message exceeds maximum size524288"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string p2, "The message payload cannot be null or empty"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string p2, "Device is not connected"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method
