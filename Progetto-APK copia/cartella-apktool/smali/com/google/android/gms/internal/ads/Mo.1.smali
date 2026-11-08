.class public final Lcom/google/android/gms/internal/ads/Mo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dp;


# static fields
.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Eo;

.field public final b:Lcom/google/android/gms/internal/ads/jC;

.field public final c:Lcom/google/android/gms/internal/ads/Yv;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lcom/google/android/gms/internal/ads/Up;

.field public final f:Lcom/google/android/gms/internal/ads/Tw;

.field public final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Mo;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yv;Lcom/google/android/gms/internal/ads/Eo;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/Up;Lcom/google/android/gms/internal/ads/Tw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mo;->g:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Mo;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Mo;->a:Lcom/google/android/gms/internal/ads/Eo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Mo;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Mo;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Mo;->e:Lcom/google/android/gms/internal/ads/Up;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Mo;->f:Lcom/google/android/gms/internal/ads/Tw;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mo;->a:Lcom/google/android/gms/internal/ads/Eo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Wc;->J:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 9
    .line 10
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 11
    .line 12
    invoke-static {v1}, Lo3/O;->c(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Eo;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/ep;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/j5;

    .line 33
    .line 34
    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/j5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Eo;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 38
    .line 39
    check-cast v4, Lcom/google/android/gms/internal/ads/IB;

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v4, Lcom/google/android/gms/internal/ads/hh;

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const-class v5, Ljava/util/concurrent/ExecutionException;

    .line 52
    .line 53
    invoke-static {v1, v5, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    new-instance v5, Lcom/google/android/gms/internal/ads/Do;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-direct {v5, v0, p1, v4, v6}, Lcom/google/android/gms/internal/ads/Do;-><init>(Ljava/lang/Object;LM3/a;II)V

    .line 65
    .line 66
    .line 67
    const-class p1, Lcom/google/android/gms/internal/ads/ep;

    .line 68
    .line 69
    invoke-static {v1, p1, v5, v3}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/16 v0, 0xb

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mo;->g:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v1, v0}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/H1;->L(LD4/b;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/google/android/gms/internal/ads/No;

    .line 85
    .line 86
    const/16 v3, 0x9

    .line 87
    .line 88
    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mo;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 92
    .line 93
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->b5:Lcom/google/android/gms/internal/ads/J7;

    .line 98
    .line 99
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 100
    .line 101
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 102
    .line 103
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    .line 115
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 116
    .line 117
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 118
    .line 119
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    int-to-long v3, v1

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mo;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    .line 132
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    .line 134
    invoke-static {p1, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    .line 139
    .line 140
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 144
    .line 145
    const-class v3, Ljava/util/concurrent/TimeoutException;

    .line 146
    .line 147
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mo;->f:Lcom/google/android/gms/internal/ads/Tw;

    .line 152
    .line 153
    invoke-static {p1, v1, v0, v6}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/google/android/gms/internal/ads/Of;

    .line 157
    .line 158
    const/16 v1, 0xf

    .line 159
    .line 160
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 164
    .line 165
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 166
    .line 167
    .line 168
    return-object p1
.end method
