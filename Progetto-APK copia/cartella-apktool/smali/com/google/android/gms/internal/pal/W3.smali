.class public final Lcom/google/android/gms/internal/pal/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/n3;


# instance fields
.field public final a:Lm2/i;


# direct methods
.method public constructor <init>(Lm2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/W3;->a:Lm2/i;

    .line 5
    .line 6
    iget-object v0, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/pal/M4;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/M4;->a:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/pal/s4;->b:Lcom/google/android/gms/internal/pal/s4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/s4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/gms/internal/pal/r4;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/google/android/gms/internal/pal/s4;->c:Lcom/google/android/gms/internal/pal/r4;

    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->v(Lm2/i;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [[B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/W3;->a:Lm2/i;

    .line 5
    .line 6
    iget-object v2, v1, Lm2/i;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lcom/google/android/gms/internal/pal/A3;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/A3;->b:[B

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v3, v2

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    aput-object v2, v0, v3

    .line 23
    .line 24
    iget-object v2, v1, Lm2/i;->I:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lcom/google/android/gms/internal/pal/A3;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/A3;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/pal/n3;

    .line 31
    .line 32
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/pal/n3;->zza([B[B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x1

    .line 37
    aput-object p1, v0, p2

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, v1, Lm2/i;->I:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Lcom/google/android/gms/internal/pal/A3;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-object p1
.end method
