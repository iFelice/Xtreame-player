.class public final Lcom/google/android/gms/internal/pal/F4;
.super Lcom/google/android/gms/internal/pal/y4;
.source "SourceFile"


# instance fields
.field public final Q:I

.field public final R:Lcom/google/android/gms/internal/pal/E4;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/pal/E4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pal/F4;->Q:I

    iput-object p2, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    return-void
.end method

.method public static J0(ILcom/google/android/gms/internal/pal/E4;)Lcom/google/android/gms/internal/pal/F4;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/pal/F4;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/pal/F4;-><init>(ILcom/google/android/gms/internal/pal/E4;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 16
    .line 17
    const-string v0, "Invalid tag size for AesCmacParameters: "

    .line 18
    .line 19
    invoke-static {v0, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public final I0()I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->e:Lcom/google/android/gms/internal/pal/E4;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/pal/F4;->Q:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 6
    .line 7
    if-ne v2, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->b:Lcom/google/android/gms/internal/pal/E4;

    .line 11
    .line 12
    if-ne v2, v0, :cond_1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x5

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->c:Lcom/google/android/gms/internal/pal/E4;

    .line 18
    .line 19
    if-ne v2, v0, :cond_2

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->d:Lcom/google/android/gms/internal/pal/E4;

    .line 25
    .line 26
    if-ne v2, v0, :cond_3

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x5

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "Unknown variant"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/pal/F4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/pal/F4;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/F4;->I0()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/F4;->I0()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/F4;->Q:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/F4;->R:Lcom/google/android/gms/internal/pal/E4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/E4;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "AES-CMAC Parameters (variant: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", "

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/pal/F4;->Q:I

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "-byte tags)"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
