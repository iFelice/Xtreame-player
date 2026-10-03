.class public abstract LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/K;


# instance fields
.field public final a:LA0/b0;

.field public b:LA0/I;

.field public c:LA0/J;

.field public d:LA0/H;

.field public e:Ljava/util/concurrent/Executor;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA0/b0;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, LA0/b0;-><init>(ZI)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LA0/a;->a:LA0/b0;

    .line 10
    .line 11
    new-instance p1, LU4/b;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, LA0/a;->b:LA0/I;

    .line 17
    .line 18
    new-instance p1, Lf/S;

    .line 19
    .line 20
    const/16 p2, 0x19

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, LA0/a;->c:LA0/J;

    .line 26
    .line 27
    new-instance p1, LN/i;

    .line 28
    .line 29
    const/4 p2, 0x5

    .line 30
    invoke-direct {p1, p2}, LN/i;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, LA0/a;->d:LA0/H;

    .line 34
    .line 35
    sget-object p1, LD4/a;->G:LD4/a;

    .line 36
    .line 37
    iput-object p1, p0, LA0/a;->e:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    iput p1, p0, LA0/a;->f:I

    .line 41
    .line 42
    iput p1, p0, LA0/a;->g:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/a;->c:LA0/J;

    .line 2
    .line 3
    invoke-interface {v0}, LA0/J;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(LF/i;Lm0/v;J)V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, LA0/a;->f:I

    .line 2
    .line 3
    iget v1, p2, Lm0/v;->c:I
    :try_end_0
    .catch Lm0/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    iget-object v2, p0, LA0/a;->a:LA0/b0;

    .line 6
    .line 7
    iget v3, p2, Lm0/v;->d:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget v0, p0, LA0/a;->g:I

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, LA0/b0;->c()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    iget v0, p2, Lm0/v;->c:I

    .line 31
    .line 32
    iput v0, p0, LA0/a;->f:I

    .line 33
    .line 34
    iput v3, p0, LA0/a;->g:I

    .line 35
    .line 36
    invoke-virtual {p0, v0, v3}, LA0/a;->g(II)Lp0/F;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, v0, Lp0/F;->a:I

    .line 41
    .line 42
    iget v0, v0, Lp0/F;->b:I

    .line 43
    .line 44
    invoke-virtual {v2}, LA0/b0;->c()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2, p1, v1, v0}, LA0/b0;->a(LF/i;II)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v2}, LA0/b0;->c()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lm0/v;

    .line 67
    .line 68
    iget v4, v3, Lm0/v;->c:I

    .line 69
    .line 70
    if-ne v4, v1, :cond_2

    .line 71
    .line 72
    iget v3, v3, Lm0/v;->d:I

    .line 73
    .line 74
    if-eq v3, v0, :cond_3

    .line 75
    .line 76
    :cond_2
    invoke-virtual {v2}, LA0/b0;->b()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1, v1, v0}, LA0/b0;->a(LF/i;II)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-virtual {v2}, LA0/b0;->d()Lm0/v;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget v0, p1, Lm0/v;->b:I

    .line 87
    .line 88
    iget v1, p1, Lm0/v;->c:I

    .line 89
    .line 90
    iget v2, p1, Lm0/v;->d:I

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Lp0/b;->r(III)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, LA0/a;->i()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lp0/b;->h()V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget v0, p2, Lm0/v;->a:I

    .line 105
    .line 106
    invoke-virtual {p0, v0, p3, p4}, LA0/a;->h(IJ)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, LA0/a;->b:LA0/I;

    .line 110
    .line 111
    invoke-interface {v0, p2}, LA0/I;->A(Lm0/v;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, LA0/a;->c:LA0/J;

    .line 115
    .line 116
    invoke-interface {p2, p1, p3, p4}, LA0/J;->i(Lm0/v;J)V
    :try_end_1
    .catch Lm0/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lp0/p; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    iget-object p2, p0, LA0/a;->e:Ljava/util/concurrent/Executor;

    .line 121
    .line 122
    new-instance p3, Lf/t;

    .line 123
    .line 124
    const/16 p4, 0x8

    .line 125
    .line 126
    invoke-direct {p3, p4, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    :goto_3
    return-void
.end method

.method public c(Lm0/v;)V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/a;->a:LA0/b0;

    .line 2
    .line 3
    iget-object v1, v0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, LA0/a;->b:LA0/I;

    .line 30
    .line 31
    invoke-interface {p1}, LA0/I;->r()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d(LA0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA0/a;->c:LA0/J;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ljava/util/concurrent/Executor;LA0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA0/a;->e:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p2, p0, LA0/a;->d:LA0/H;

    .line 4
    .line 5
    return-void
.end method

.method public final f(LA0/I;)V
    .locals 3

    .line 1
    iput-object p1, p0, LA0/a;->b:LA0/I;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, LA0/a;->a:LA0/b0;

    .line 5
    .line 6
    invoke-virtual {v1}, LA0/b0;->c()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget v1, v1, LA0/b0;->c:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, v1, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_1
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, LA0/I;->r()V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/a;->a:LA0/b0;

    .line 2
    .line 3
    iget-object v1, v0, LA0/b0;->a:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    iget-object v2, v0, LA0/b0;->b:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, LA0/a;->b:LA0/I;

    .line 14
    .line 15
    invoke-interface {v1}, LA0/I;->x()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v2, v0, LA0/b0;->c:I

    .line 20
    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, LA0/a;->b:LA0/I;

    .line 24
    .line 25
    invoke-interface {v2}, LA0/I;->r()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public abstract g(II)Lp0/F;
.end method

.method public abstract h(IJ)V
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
