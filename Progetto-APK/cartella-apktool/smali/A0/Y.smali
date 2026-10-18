.class public final LA0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/v0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm0/q0;

.field public final c:Lm0/i;

.field public final d:Lm0/u0;

.field public final e:Lm0/k;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Z

.field public h:Lm0/s0;

.field public i:Lm0/b0;

.field public j:Lz4/H;

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm0/q0;Lm0/i;LU0/x;LU0/n;)V
    .locals 1

    .line 1
    sget-object v0, Lm0/k;->C:LN/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LA0/Y;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, LA0/Y;->b:Lm0/q0;

    .line 9
    .line 10
    iput-object p3, p0, LA0/Y;->c:Lm0/i;

    .line 11
    .line 12
    iput-object p4, p0, LA0/Y;->d:Lm0/u0;

    .line 13
    .line 14
    iput-object v0, p0, LA0/Y;->e:Lm0/k;

    .line 15
    .line 16
    iput-object p5, p0, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 19
    .line 20
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 21
    .line 22
    iput-object p1, p0, LA0/Y;->j:Lz4/H;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, LA0/Y;->g:Z

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, LA0/Y;->l:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .line 1
    iget-object v0, p0, LA0/Y;->h:Lm0/s0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, LA0/Y;->k:Z

    .line 6
    .line 7
    :cond_0
    iget v0, p0, LA0/Y;->l:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "This VideoGraph supports only one input."

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iput p1, p0, LA0/Y;->l:I

    .line 21
    .line 22
    new-instance v7, Lf6/c;

    .line 23
    .line 24
    invoke-direct {v7, p0}, Lf6/c;-><init>(LA0/Y;)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, LA0/Y;->c:Lm0/i;

    .line 28
    .line 29
    iget-boolean v6, p0, LA0/Y;->g:Z

    .line 30
    .line 31
    iget-object v2, p0, LA0/Y;->b:Lm0/q0;

    .line 32
    .line 33
    iget-object v3, p0, LA0/Y;->a:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v4, p0, LA0/Y;->e:Lm0/k;

    .line 36
    .line 37
    invoke-interface/range {v2 .. v7}, Lm0/q0;->a(Landroid/content/Context;Lm0/k;Lm0/i;ZLf6/c;)Lm0/s0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, LA0/Y;->h:Lm0/s0;

    .line 42
    .line 43
    iget-object v0, p0, LA0/Y;->i:Lm0/b0;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    check-cast p1, LA0/x;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, LA0/x;->c(Lm0/b0;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final b(J)V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/Y;->h:Lm0/s0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/Y;->h:Lm0/s0;

    .line 7
    .line 8
    check-cast v0, LA0/x;

    .line 9
    .line 10
    iget-boolean v1, v0, LA0/x;->j:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    const-string v2, "Calling this method is not allowed when renderFramesAutomatically is enabled"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v1, LA0/r;

    .line 20
    .line 21
    invoke-direct {v1, v0, p1, p2}, LA0/r;-><init>(LA0/x;J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, LA0/x;->g:LA0/h0;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, LA0/h0;->g(LA0/g0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
