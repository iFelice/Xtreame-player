.class public final Lcom/google/android/gms/internal/measurement/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/C;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/C;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/C;->b:B

    .line 12
    .line 13
    iput v2, v0, Lcom/google/android/gms/internal/measurement/C;->c:I

    .line 14
    .line 15
    iput v2, v0, Lcom/google/android/gms/internal/measurement/C;->d:I

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C;->a()Lcom/google/android/gms/internal/measurement/D;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/C;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/C;->a:Ljava/lang/String;

    .line 26
    .line 27
    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/C;->b:B

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    iput v3, v0, Lcom/google/android/gms/internal/measurement/C;->c:I

    .line 31
    .line 32
    iput v2, v0, Lcom/google/android/gms/internal/measurement/C;->d:I

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C;->a()Lcom/google/android/gms/internal/measurement/D;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/measurement/C;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/C;->a:Ljava/lang/String;

    .line 43
    .line 44
    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/C;->b:B

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    iput v1, v0, Lcom/google/android/gms/internal/measurement/C;->c:I

    .line 48
    .line 49
    iput v2, v0, Lcom/google/android/gms/internal/measurement/C;->d:I

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C;->a()Lcom/google/android/gms/internal/measurement/D;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/D;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/measurement/D;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/measurement/D;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/D;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/measurement/D;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/D;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/D;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iget v3, p0, Lcom/google/android/gms/internal/measurement/D;->b:I

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget v4, p1, Lcom/google/android/gms/internal/measurement/D;->b:I

    .line 28
    .line 29
    if-ne v3, v4, :cond_3

    .line 30
    .line 31
    iget v3, p0, Lcom/google/android/gms/internal/measurement/D;->c:I

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget p1, p1, Lcom/google/android/gms/internal/measurement/D;->c:I

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    return v0

    .line 40
    :cond_1
    throw v1

    .line 41
    :cond_2
    throw v1

    .line 42
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/D;->a:Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 12
    iget v3, p0, Lcom/google/android/gms/internal/measurement/D;->b:I

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    xor-int/lit16 v0, v0, 0x4d5

    .line 19
    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    xor-int/2addr v0, v3

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/measurement/D;->c:I

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x22cd8cdb

    .line 28
    .line 29
    .line 30
    mul-int v0, v0, v1

    .line 31
    .line 32
    xor-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_0
    throw v2

    .line 36
    :cond_1
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "null"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/measurement/D;->b:I

    .line 5
    .line 6
    if-eq v2, v1, :cond_3

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v2, v3, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    move-object v2, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "NO_CHECKS"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v2, "SKIP_SECURITY_CHECK"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string v2, "SKIP_COMPLIANCE_CHECK"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const-string v2, "ALL_CHECKS"

    .line 29
    .line 30
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/measurement/D;->c:I

    .line 31
    .line 32
    if-eq v3, v1, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    const-string v0, "READ_AND_WRITE"

    .line 36
    .line 37
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "FileComplianceOptions{fileOwner="

    .line 40
    .line 41
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/D;->a:Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, ", hasDifferentDmaOwner=false, fileChecks="

    .line 47
    .line 48
    const-string v5, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose="

    .line 49
    .line 50
    invoke-static {v1, v3, v4, v2, v5}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "}"

    .line 54
    .line 55
    invoke-static {v1, v0, v2}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
