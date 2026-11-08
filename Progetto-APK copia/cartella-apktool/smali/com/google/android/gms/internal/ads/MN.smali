.class public final synthetic Lcom/google/android/gms/internal/ads/MN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pO;


# instance fields
.field public final G:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/pl;->a:Lcom/google/android/gms/internal/ads/Nr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/g;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/Ve;[ILcom/google/android/gms/internal/ads/uA;)Lcom/google/android/gms/internal/ads/eO;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/eO;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fO;-><init>(Lcom/google/android/gms/internal/ads/Ve;[I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/Ve;[I)Lcom/google/android/gms/internal/ads/PA;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const-string v1, "initialCapacity"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lo3/r;->q(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    :goto_0
    iget v1, p2, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 15
    .line 16
    if-ge v7, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Lcom/google/android/gms/internal/ads/lO;

    .line 22
    .line 23
    new-instance v9, Lcom/google/android/gms/internal/ads/iO;

    .line 24
    .line 25
    aget v6, p3, v7

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move v4, v7

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/iO;-><init>(ILcom/google/android/gms/internal/ads/Ve;ILcom/google/android/gms/internal/ads/lO;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v8, 0x1

    .line 35
    .line 36
    array-length v2, v0

    .line 37
    if-ge v2, v1, :cond_0

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    aput-object v9, v0, v8

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    move v8, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/cL;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/google/android/gms/internal/ads/AO;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/AO;->b:Lcom/google/android/gms/internal/ads/cL;

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/AO;->c:Z

    .line 28
    .line 29
    move-object v3, v0

    .line 30
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method
