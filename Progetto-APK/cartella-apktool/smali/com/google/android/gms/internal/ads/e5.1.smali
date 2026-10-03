.class public final Lcom/google/android/gms/internal/ads/e5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/android/gms/internal/ads/uA;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x24

    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/gms/internal/ads/uA;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/va;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e5;->b:Ljava/util/List;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e5;->c:Lcom/google/android/gms/internal/ads/uA;

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/rA;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-gtz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/e5;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/e5;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e5;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/e5;->b:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e5;->c:Lcom/google/android/gms/internal/ads/uA;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/e5;->c:Lcom/google/android/gms/internal/ads/uA;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/uA;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return v0

    .line 59
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e5;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xe1781

    .line 8
    .line 9
    .line 10
    mul-int v0, v0, v1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e5;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit16 v1, v1, 0x3c1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e5;->c:Lcom/google/android/gms/internal/ads/uA;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uA;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v2, 0x1f

    .line 32
    .line 33
    mul-long v0, v0, v2

    .line 34
    .line 35
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    add-long/2addr v0, v2

    .line 41
    long-to-int v1, v0

    .line 42
    return v1
.end method
