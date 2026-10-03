.class public final Lcom/google/ads/interactivemedia/v3/internal/zzahl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_3

    .line 5
    :cond_0
    if-nez p1, :cond_2

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    .line 9
    if-ge p1, v1, :cond_4

    .line 10
    .line 11
    aget-object v1, p0, p1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x0

    .line 20
    :goto_1
    array-length v2, p0

    .line 21
    if-ge v1, v2, :cond_4

    .line 22
    .line 23
    aget-object v2, p0, v1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    :goto_2
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_4
    :goto_3
    return v0
.end method
