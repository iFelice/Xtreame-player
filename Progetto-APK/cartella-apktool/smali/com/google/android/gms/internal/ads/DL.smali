.class public final Lcom/google/android/gms/internal/ads/DL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/DL;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/internal/ads/zA;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/DL;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/yA;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/yA;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    :goto_0
    if-gt v4, v2, :cond_0

    .line 19
    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/yA;->h(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yA;->j()Lcom/google/android/gms/internal/ads/zA;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/DL;-><init>(ILjava/util/Set;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/DL;

    .line 43
    .line 44
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/DL;-><init>(II)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/ads/DL;->d:Lcom/google/android/gms/internal/ads/DL;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/DL;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/DL;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/DL;->a:I

    sget p1, Lcom/google/android/gms/internal/ads/zA;->I:I

    .line 3
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zA;

    if-eqz p1, :cond_0

    instance-of p1, p2, Ljava/util/SortedSet;

    if-nez p1, :cond_0

    .line 4
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zA;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pA;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pA;->n()Lcom/google/android/gms/internal/ads/gB;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/DL;->b:I

    return-void
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
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/DL;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/DL;

    .line 12
    .line 13
    iget v1, p1, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 14
    .line 15
    iget v3, p0, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 28
    .line 29
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zA;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 14
    .line 15
    mul-int/lit8 v2, v2, 0x1f

    .line 16
    .line 17
    add-int/2addr v2, v1

    .line 18
    mul-int/lit8 v2, v2, 0x1f

    .line 19
    .line 20
    add-int/2addr v2, v0

    .line 21
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DL;->c:Lcom/google/android/gms/internal/ads/zA;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "AudioProfile[format="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/ads/DL;->a:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", maxChannelCount="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/google/android/gms/internal/ads/DL;->b:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", channelMasks="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "]"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
