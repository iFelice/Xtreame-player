.class public final Lcom/google/android/gms/internal/pal/N4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/w3;

.field public final b:I

.field public final c:Lcom/google/android/gms/internal/pal/y4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/pal/w3;ILcom/google/android/gms/internal/pal/y4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/N4;->a:Lcom/google/android/gms/internal/pal/w3;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/N4;->c:Lcom/google/android/gms/internal/pal/y4;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/pal/N4;

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
    check-cast p1, Lcom/google/android/gms/internal/pal/N4;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/N4;->a:Lcom/google/android/gms/internal/pal/w3;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/N4;->a:Lcom/google/android/gms/internal/pal/w3;

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 16
    .line 17
    iget v2, p1, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/N4;->c:Lcom/google/android/gms/internal/pal/y4;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/N4;->c:Lcom/google/android/gms/internal/pal/y4;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/N4;->c:Lcom/google/android/gms/internal/pal/y4;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/N4;->a:Lcom/google/android/gms/internal/pal/w3;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v2, v3, v4

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v0, v3, v2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v1, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/N4;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/N4;->c:Lcom/google/android/gms/internal/pal/y4;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/N4;->a:Lcom/google/android/gms/internal/pal/w3;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v2, v3, v4

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v0, v3, v2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-object v1, v3, v0

    .line 22
    .line 23
    const-string v0, "(status=%s, keyId=%s, parameters=\'%s\')"

    .line 24
    .line 25
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
