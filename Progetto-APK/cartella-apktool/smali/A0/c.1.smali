.class public final LA0/c;
.super LA0/a0;
.source "SourceFile"


# instance fields
.field public final J:Ljava/util/concurrent/LinkedBlockingQueue;

.field public K:LA0/T;

.field public L:Lm0/v;

.field public M:I


# direct methods
.method public constructor <init>(LF/i;LA0/h0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LA0/a0;-><init>(LA0/h0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LA0/c;->J:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/c;->J:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LA0/c;->M:I

    .line 8
    .line 9
    iget-object v0, p0, LA0/c;->L:Lm0/v;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Lm0/v;->a()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LA0/c;->L:Lm0/v;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    throw v0

    .line 26
    :cond_0
    :goto_0
    invoke-super {p0}, LA0/a0;->b()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    new-instance v0, LA0/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, LA0/b;-><init>(LA0/c;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final j(LA0/m;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA0/c;->M:I

    .line 3
    .line 4
    iput-object p1, p0, LA0/c;->K:LA0/T;

    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    new-instance v0, LA0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, LA0/b;-><init>(LA0/c;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    new-instance v0, LA0/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, LA0/b;-><init>(LA0/c;I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
