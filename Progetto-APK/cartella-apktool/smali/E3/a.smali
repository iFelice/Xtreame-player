.class public final LE3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public G:Z

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/yx;Lcom/google/android/gms/internal/ads/Ax;Lcom/google/android/gms/internal/ads/Cx;Lcom/google/android/gms/internal/ads/Cx;Z)LE3/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Cx;->J:Lcom/google/android/gms/internal/ads/Cx;

    .line 2
    .line 3
    if-eq p2, v0, :cond_4

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/yx;->H:Lcom/google/android/gms/internal/ads/yx;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/Cx;->H:Lcom/google/android/gms/internal/ads/Cx;

    .line 8
    .line 9
    const-string v2, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Ax;->H:Lcom/google/android/gms/internal/ads/Ax;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-eq p2, v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_3
    :goto_1
    new-instance v0, LE3/a;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p0, v0, LE3/a;->J:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p1, v0, LE3/a;->K:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p2, v0, LE3/a;->H:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p3, v0, LE3/a;->I:Ljava/lang/Object;

    .line 47
    .line 48
    iput-boolean p4, v0, LE3/a;->G:Z

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p1, "Impression owner is none"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 2
    .line 3
    iget-object v0, p0, LE3/a;->K:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/io/IOException;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/eL;->c(Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
