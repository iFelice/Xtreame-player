.class public final Lcom/google/android/gms/internal/ads/Ps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/jC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ps;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ps;->a:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ec:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/Qs;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/Qs;-><init>(ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/Qs;

    .line 40
    .line 41
    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/Qs;-><init>(ILjava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/he;

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/gms/internal/ads/IB;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
