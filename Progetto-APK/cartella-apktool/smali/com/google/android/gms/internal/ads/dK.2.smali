.class public final Lcom/google/android/gms/internal/ads/dK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/p0;

.field public final c:Lcom/google/android/gms/internal/ads/p0;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    const/4 p5, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :cond_1
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dK;->a:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dK;->b:Lcom/google/android/gms/internal/ads/p0;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dK;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 30
    .line 31
    iput p4, p0, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 32
    .line 33
    iput p5, p0, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/dK;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/dK;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 26
    .line 27
    iget v3, p1, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dK;->a:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dK;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dK;->b:Lcom/google/android/gms/internal/ads/p0;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dK;->b:Lcom/google/android/gms/internal/ads/p0;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dK;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dK;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/p0;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    return v0

    .line 62
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 2
    .line 3
    add-int/lit16 v0, v0, 0x20f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dK;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dK;->b:Lcom/google/android/gms/internal/ads/p0;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p0;->hashCode()I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dK;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p0;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v1, v0

    .line 37
    return v1
.end method
