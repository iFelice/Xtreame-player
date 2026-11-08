.class public final synthetic LA0/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lf6/c;

.field public final synthetic H:J

.field public final synthetic I:Z


# direct methods
.method public synthetic constructor <init>(Lf6/c;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/W;->G:Lf6/c;

    .line 5
    .line 6
    iput-wide p2, p0, LA0/W;->H:J

    .line 7
    .line 8
    iput-boolean p4, p0, LA0/W;->I:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, LA0/W;->G:Lf6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LA0/Y;

    .line 6
    .line 7
    iget-object v0, v0, LA0/Y;->d:Lm0/u0;

    .line 8
    .line 9
    check-cast v0, LU0/x;

    .line 10
    .line 11
    iget v1, v0, LU0/x;->s:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, v0, LU0/x;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, LU0/t;

    .line 33
    .line 34
    check-cast v2, LU0/s;

    .line 35
    .line 36
    iget-object v3, v2, LU0/s;->N:LU0/O;

    .line 37
    .line 38
    iget-object v2, v2, LU0/s;->O:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v4, LU0/q;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v4, v3, v5}, LU0/q;-><init>(LU0/O;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-boolean v1, p0, LA0/W;->I:Z

    .line 54
    .line 55
    iget-wide v3, p0, LA0/W;->H:J

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v2, v0, LU0/x;->o:LU0/B;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iget-object v7, v0, LU0/x;->j:Lm0/t;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-interface/range {v2 .. v8}, LU0/B;->b(JJLm0/t;Landroid/media/MediaFormat;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iput-wide v3, v0, LU0/x;->u:J

    .line 76
    .line 77
    iget-object v1, v0, LU0/x;->i:Lc/g;

    .line 78
    .line 79
    invoke-virtual {v1, v3, v4}, Lc/g;->k(J)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, LU0/w;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    iget-wide v5, v1, LU0/w;->a:J

    .line 88
    .line 89
    iput-wide v5, v0, LU0/x;->p:J

    .line 90
    .line 91
    iget v1, v1, LU0/w;->b:I

    .line 92
    .line 93
    iput v1, v0, LU0/x;->q:I

    .line 94
    .line 95
    invoke-virtual {v0}, LU0/x;->c()V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v1, v0, LU0/x;->f:LU0/o;

    .line 99
    .line 100
    iget-object v2, v0, LU0/x;->e:LU0/d;

    .line 101
    .line 102
    invoke-virtual {v2, v3, v4, v1}, LU0/d;->r(JLU0/P;)Z

    .line 103
    .line 104
    .line 105
    iget-wide v5, v0, LU0/x;->v:J

    .line 106
    .line 107
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmp-long v1, v5, v7

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    cmp-long v1, v3, v5

    .line 117
    .line 118
    if-ltz v1, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2}, LU0/d;->a()V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    iput-boolean v1, v0, LU0/x;->w:Z

    .line 125
    .line 126
    :cond_4
    :goto_1
    return-void
.end method
