.class public abstract Lcom/google/android/gms/internal/measurement/Q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ly4/j;


# direct methods
.method public static c(Landroid/content/Context;)Lr2/l;
    .locals 6

    .line 1
    new-instance v0, Lm2/u;

    .line 2
    .line 3
    new-instance v1, Ls2/f;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lm2/u;-><init>(Ls2/f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Lm2/c;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lm2/c;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lr2/l;

    .line 21
    .line 22
    new-instance v2, Ls2/d;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ls2/d;-><init>(Lm2/c;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, LD0/U;

    .line 28
    .line 29
    new-instance v3, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v3}, LD0/U;-><init>(Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lr2/l;->a:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v3, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Lr2/l;->b:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v3, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lr2/l;->e:Ljava/lang/Object;

    .line 78
    .line 79
    new-instance v3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lr2/l;->f:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v2, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v0, p0, Lr2/l;->h:Ljava/lang/Object;

    .line 89
    .line 90
    const/4 v0, 0x4

    .line 91
    new-array v0, v0, [Lr2/g;

    .line 92
    .line 93
    iput-object v0, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v1, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v0, p0, Lr2/l;->k:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lr2/c;

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    invoke-virtual {v0}, Lr2/c;->b()V

    .line 104
    .line 105
    .line 106
    :cond_0
    iget-object v0, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, [Lr2/g;

    .line 109
    .line 110
    array-length v1, v0

    .line 111
    const/4 v2, 0x0

    .line 112
    const/4 v3, 0x0

    .line 113
    :goto_0
    if-ge v3, v1, :cond_2

    .line 114
    .line 115
    aget-object v4, v0, v3

    .line 116
    .line 117
    if-eqz v4, :cond_1

    .line 118
    .line 119
    const/4 v5, 0x1

    .line 120
    iput-boolean v5, v4, Lr2/g;->K:Z

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 123
    .line 124
    .line 125
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lr2/c;

    .line 129
    .line 130
    iget-object v1, p0, Lr2/l;->c:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 133
    .line 134
    iget-object v3, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 137
    .line 138
    iget-object v4, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Ls2/d;

    .line 141
    .line 142
    iget-object v5, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v5, LD0/U;

    .line 145
    .line 146
    invoke-direct {v0, v1, v3, v4, v5}, Lr2/c;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Ls2/d;LD0/U;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lr2/l;->k:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v0, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, [Lr2/g;

    .line 157
    .line 158
    array-length v0, v0

    .line 159
    if-ge v2, v0, :cond_3

    .line 160
    .line 161
    new-instance v0, Lr2/g;

    .line 162
    .line 163
    iget-object v1, p0, Lr2/l;->d:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 166
    .line 167
    iget-object v3, p0, Lr2/l;->h:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v3, Lm2/u;

    .line 170
    .line 171
    iget-object v4, p0, Lr2/l;->g:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v4, Ls2/d;

    .line 174
    .line 175
    iget-object v5, p0, Lr2/l;->i:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v5, LD0/U;

    .line 178
    .line 179
    invoke-direct {v0, v1, v3, v4, v5}, Lr2/g;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;Lm2/u;Ls2/d;LD0/U;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lr2/l;->j:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, [Lr2/g;

    .line 185
    .line 186
    aput-object v0, v1, v2

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
