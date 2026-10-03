.class public final Lcom/google/android/gms/internal/ads/qm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vm;Lcom/google/android/gms/internal/ads/ym;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qm;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qm;->b:Lcom/google/android/gms/internal/ads/QJ;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qm;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/vm;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vm;->a()Lcom/google/android/gms/internal/ads/um;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qm;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/ads/ym;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ym;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/vm;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vm;->a()Lcom/google/android/gms/internal/ads/um;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/google/android/gms/internal/ads/xm;

    .line 30
    .line 31
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/xm;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/um;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/google/android/gms/internal/ads/pm;

    .line 35
    .line 36
    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/pm;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/um;Lcom/google/android/gms/internal/ads/xm;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method
