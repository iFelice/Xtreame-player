.class public final Lcom/google/android/gms/internal/ads/rp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/op;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rp;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/op;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->b:Lcom/google/android/gms/internal/ads/re;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/op;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/gms/internal/ads/xp;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xp;->a()Lcom/google/android/gms/internal/ads/wp;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v3, Lcom/google/android/gms/internal/ads/np;

    .line 27
    .line 28
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/np;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/wp;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rp;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/gms/internal/ads/Kw;

    .line 38
    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/qp;

    .line 40
    .line 41
    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/qp;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/Kw;)V

    .line 42
    .line 43
    .line 44
    return-object v2
.end method
