.class public abstract Lcom/google/protobuf/b1;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/protobuf/i1;

.field public H:Lcom/google/protobuf/i1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/i1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/b1;->G:Lcom/google/protobuf/i1;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/i1;->isMutable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/i1;->newMutableInstance()Lcom/google/protobuf/i1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Default instance must be immutable."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public static h(Lcom/google/protobuf/i1;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/g2;->b(Ljava/lang/Object;)Lcom/google/protobuf/j2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/j2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/protobuf/i1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->c()Lcom/google/protobuf/i1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->isInitialized()Z

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
    new-instance v0, Lcom/google/protobuf/z2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/protobuf/z2;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public c()Lcom/google/protobuf/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->isMutable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->makeImmutable()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 18
    .line 19
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->G:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->newBuilderForType()Lcom/google/protobuf/b1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->c()Lcom/google/protobuf/i1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 12
    .line 13
    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->isMutable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->e()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->G:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->newMutableInstance()Lcom/google/protobuf/i1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/b1;->h(Lcom/google/protobuf/i1;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 13
    .line 14
    return-void
.end method

.method public final f(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->d()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/google/protobuf/g2;->c:Lcom/google/protobuf/g2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/protobuf/g2;->b(Ljava/lang/Object;)Lcom/google/protobuf/j2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/protobuf/w;->d:Lcom/google/android/gms/internal/ads/CO;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/CO;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iput v3, v2, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 26
    .line 27
    sget-object v3, Lcom/google/protobuf/v1;->a:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v2, p1, Lcom/google/protobuf/w;->d:Lcom/google/android/gms/internal/ads/CO;

    .line 32
    .line 33
    :goto_0
    invoke-interface {v0, v1, v2, p2}, Lcom/google/protobuf/j2;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/CO;Lcom/google/protobuf/O0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    instance-of p2, p2, Ljava/io/IOException;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/io/IOException;

    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    throw p1
.end method

.method public final g(Lcom/google/protobuf/i1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->G:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/i1;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->d()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/google/protobuf/b1;->h(Lcom/google/protobuf/i1;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/Q1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->G:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b1;->H:Lcom/google/protobuf/i1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/i1;->isInitialized(Lcom/google/protobuf/i1;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public bridge synthetic k()Lcom/google/protobuf/Q1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b1;->c()Lcom/google/protobuf/i1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
