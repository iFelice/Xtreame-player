.class public final Lcom/google/android/gms/internal/pal/J4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/z3;


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
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/J4;->a:Lm2/i;

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
.method public final a([B)[B
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/J4;->a:Lm2/i;

    .line 5
    .line 6
    iget-object v4, v3, Lm2/i;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v4, Lcom/google/android/gms/internal/pal/A3;

    .line 9
    .line 10
    iget v4, v4, Lcom/google/android/gms/internal/pal/A3;->f:I

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    if-ne v4, v5, :cond_0

    .line 14
    .line 15
    new-array v4, v2, [[B

    .line 16
    .line 17
    aput-object p1, v4, v1

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/pal/K4;->a:[B

    .line 20
    .line 21
    aput-object p1, v4, v0

    .line 22
    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    new-array v2, v2, [[B

    .line 28
    .line 29
    iget-object v4, v3, Lm2/i;->I:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lcom/google/android/gms/internal/pal/A3;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/A3;->b:[B

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    array-length v5, v4

    .line 40
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :goto_0
    aput-object v4, v2, v1

    .line 45
    .line 46
    iget-object v1, v3, Lm2/i;->I:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lcom/google/android/gms/internal/pal/A3;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/A3;->a:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lcom/google/android/gms/internal/pal/z3;

    .line 53
    .line 54
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/pal/z3;->a([B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    aput-object p1, v2, v0

    .line 59
    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, v3, Lm2/i;->I:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lcom/google/android/gms/internal/pal/A3;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    return-object p1
.end method
