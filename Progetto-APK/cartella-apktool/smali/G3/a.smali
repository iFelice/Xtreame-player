.class public final LG3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LG3/a;

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
    check-cast p1, LG3/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v1, p0, LG3/a;->a:I

    .line 17
    .line 18
    iget p1, p1, LG3/a;->a:I

    .line 19
    .line 20
    if-ne v1, p1, :cond_2

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, LG3/a;->a:I

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x6

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object v1, v3, v0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v2, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-object v1, v3, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-object v1, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    aput-object v1, v3, v0

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    aput-object v0, v3, v1

    .line 33
    .line 34
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method
