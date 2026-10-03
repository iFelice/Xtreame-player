.class public abstract Lcom/google/android/gms/internal/pal/C;
.super Lcom/google/android/gms/internal/pal/i;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/pal/D;

.field public H:Lcom/google/android/gms/internal/pal/D;

.field public I:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/D;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/C;->G:Lcom/google/android/gms/internal/pal/D;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pal/D;->l(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/pal/D;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 17
    .line 18
    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/pal/D;Lcom/google/android/gms/internal/pal/D;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/h0;->c:Lcom/google/android/gms/internal/pal/h0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/h0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/k0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/pal/k0;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/pal/D;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/C;->a(Lcom/google/android/gms/internal/pal/D;Lcom/google/android/gms/internal/pal/D;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c([BILcom/google/android/gms/internal/pal/x;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 10
    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/pal/h0;->c:Lcom/google/android/gms/internal/pal/h0;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/h0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/k0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 24
    .line 25
    new-instance v7, LA0/w;

    .line 26
    .line 27
    invoke-direct {v7, p3}, LA0/w;-><init>(Lcom/google/android/gms/internal/pal/x;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v4, p1

    .line 32
    move v6, p2

    .line 33
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/pal/k0;->a(Ljava/lang/Object;[BIILA0/w;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p3, "Reading from byte array should not throw IOException."

    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/pal/L;->e()Lcom/google/android/gms/internal/pal/L;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    throw p1

    .line 54
    :goto_1
    throw p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->G:Lcom/google/android/gms/internal/pal/D;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/D;->l(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/pal/C;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->e()Lcom/google/android/gms/internal/pal/D;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/C;->b(Lcom/google/android/gms/internal/pal/D;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/pal/D;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->e()Lcom/google/android/gms/internal/pal/D;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/D;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/n0;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/n0;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/pal/D;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/pal/h0;->c:Lcom/google/android/gms/internal/pal/h0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pal/h0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/pal/k0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/pal/k0;->zzf(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 27
    .line 28
    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/D;->l(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/pal/D;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/C;->a(Lcom/google/android/gms/internal/pal/D;Lcom/google/android/gms/internal/pal/D;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 16
    .line 17
    return-void
.end method
