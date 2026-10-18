.class public final Lm0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/CO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/CO;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget v3, v0, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 9
    .line 10
    iget v4, v0, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 11
    .line 12
    if-gt v3, v4, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lm0/l;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Lm0/l;-><init>(Lcom/google/android/gms/internal/ads/CO;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lp0/M;->L(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lp0/M;->L(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/CO;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 5
    .line 6
    iput v0, p0, Lm0/l;->a:I

    .line 7
    .line 8
    iget v0, p1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 9
    .line 10
    iput v0, p0, Lm0/l;->b:I

    .line 11
    .line 12
    iget v0, p1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 13
    .line 14
    iput v0, p0, Lm0/l;->c:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lm0/l;->d:Ljava/lang/String;

    .line 21
    .line 22
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
    instance-of v1, p1, Lm0/l;

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
    check-cast p1, Lm0/l;

    .line 12
    .line 13
    iget v1, p1, Lm0/l;->a:I

    .line 14
    .line 15
    iget v3, p0, Lm0/l;->a:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lm0/l;->b:I

    .line 20
    .line 21
    iget v3, p1, Lm0/l;->b:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lm0/l;->c:I

    .line 26
    .line 27
    iget v3, p1, Lm0/l;->c:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lm0/l;->d:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lm0/l;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Lm0/l;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Lm0/l;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lm0/l;->c:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lm0/l;->d:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method
