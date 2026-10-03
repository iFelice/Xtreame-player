.class public final Lcom/google/android/gms/internal/ads/Ly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ky;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-byte v2, v0, Lcom/google/android/gms/internal/ads/Ky;->c:B

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    or-int/2addr v2, v3

    .line 14
    int-to-byte v2, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Ky;->b:Z

    .line 17
    .line 18
    or-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    iput-byte v2, v0, Lcom/google/android/gms/internal/ads/Ky;->c:B

    .line 22
    .line 23
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ky;->d:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ky;->a()Lcom/google/android/gms/internal/ads/Ly;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ky;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-byte v1, v0, Lcom/google/android/gms/internal/ads/Ky;->c:B

    .line 36
    .line 37
    or-int/2addr v1, v3

    .line 38
    int-to-byte v1, v1

    .line 39
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/Ky;->b:Z

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    int-to-byte v1, v1

    .line 44
    iput-byte v1, v0, Lcom/google/android/gms/internal/ads/Ky;->c:B

    .line 45
    .line 46
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ky;->d:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ky;->a()Lcom/google/android/gms/internal/ads/Ly;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ly;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Ly;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/Ly;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/Ly;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/Ly;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Ly;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ly;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ly;->b:Z

    .line 23
    .line 24
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/Ly;->b:Z

    .line 25
    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ly;->c:I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget p1, p1, Lcom/google/android/gms/internal/ads/Ly;->c:I

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    throw p1

    .line 39
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ly;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ly;->c:I

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    mul-int v0, v0, v1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ly;->b:Z

    .line 18
    .line 19
    const/16 v3, 0x4d5

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v4, v2, :cond_0

    .line 23
    .line 24
    const/16 v2, 0x4d5

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v2, 0x4cf

    .line 28
    .line 29
    :goto_0
    xor-int/2addr v0, v3

    .line 30
    mul-int v0, v0, v1

    .line 31
    .line 32
    xor-int/2addr v0, v2

    .line 33
    const v1, 0x22cd8cdb

    .line 34
    .line 35
    .line 36
    mul-int v0, v0, v1

    .line 37
    .line 38
    xor-int/2addr v0, v4

    .line 39
    return v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ly;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "null"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "READ_AND_WRITE"

    .line 10
    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "FileComplianceOptions{fileOwner="

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ly;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", hasDifferentDmaOwner=false, skipChecks="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ly;->b:Z

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "}"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
