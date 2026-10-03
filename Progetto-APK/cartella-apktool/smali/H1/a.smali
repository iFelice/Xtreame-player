.class public final LH1/a;
.super LD6/h;
.source "SourceFile"

# interfaces
.implements LC6/l;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LH1/a;->G:I

    .line 2
    .line 3
    iput-object p2, p0, LH1/a;->H:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LH1/a;->I:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, LD6/h;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, LH1/a;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LH1/a;->I:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LH1/a;->H:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, LT1/b;

    .line 12
    .line 13
    const-string v0, "db"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v2, LP1/a;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, LT1/b;->m(Ljava/lang/String;)LT1/i;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1

    .line 32
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    check-cast v2, Lt/i;

    .line 42
    .line 43
    iput-boolean v0, v2, Lt/i;->d:Z

    .line 44
    .line 45
    iget-object p1, v2, Lt/i;->b:Lt/l;

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    iget-object p1, p1, Lt/l;->H:Lt/k;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lt/h;->cancel(Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iput-object v3, v2, Lt/i;->a:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v3, v2, Lt/i;->b:Lt/l;

    .line 60
    .line 61
    iput-object v3, v2, Lt/i;->c:Lt/m;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    check-cast v2, Lt/i;

    .line 65
    .line 66
    iput-boolean v0, v2, Lt/i;->d:Z

    .line 67
    .line 68
    iget-object v0, v2, Lt/i;->b:Lt/l;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, v0, Lt/l;->H:Lt/k;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lt/h;->j(Ljava/lang/Throwable;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iput-object v3, v2, Lt/i;->a:Ljava/lang/Object;

    .line 81
    .line 82
    iput-object v3, v2, Lt/i;->b:Lt/l;

    .line 83
    .line 84
    iput-object v3, v2, Lt/i;->c:Lt/m;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    check-cast v2, Lt/i;

    .line 88
    .line 89
    check-cast v1, LJ6/u;

    .line 90
    .line 91
    check-cast v1, LJ6/v;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object p1, LJ6/Q;->G:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    instance-of v1, p1, LJ6/G;

    .line 103
    .line 104
    xor-int/2addr v0, v1

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    instance-of v0, p1, LJ6/k;

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    instance-of v0, p1, LJ6/H;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    move-object v3, p1

    .line 116
    check-cast v3, LJ6/H;

    .line 117
    .line 118
    :cond_2
    if-eqz v3, :cond_4

    .line 119
    .line 120
    iget-object v0, v3, LJ6/H;->a:LJ6/G;

    .line 121
    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move-object p1, v0

    .line 126
    :cond_4
    :goto_0
    invoke-virtual {v2, p1}, Lt/i;->a(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_1
    sget-object p1, Lt6/h;->a:Lt6/h;

    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_6
    check-cast p1, LJ6/k;

    .line 133
    .line 134
    iget-object p1, p1, LJ6/k;->a:Ljava/lang/Throwable;

    .line 135
    .line 136
    throw p1

    .line 137
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string v0, "This job has not completed yet"

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
