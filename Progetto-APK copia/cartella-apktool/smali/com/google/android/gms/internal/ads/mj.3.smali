.class public final Lcom/google/android/gms/internal/ads/mj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;

.field public final d:Lcom/google/android/gms/internal/ads/QJ;

.field public final e:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Di;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mj;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mj;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mj;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mj;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mj;->e:Lcom/google/android/gms/internal/ads/QJ;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/lj;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Ci;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ci;->a:La3/b;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ci;->a(La3/b;)Lcom/google/android/gms/internal/ads/Ov;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/Di;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Di;->a:La3/b;

    .line 16
    .line 17
    iget-object v0, v0, La3/b;->J:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v4, v0

    .line 29
    check-cast v4, Lcom/google/android/gms/internal/ads/uq;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/Ei;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ei;->a:La3/b;

    .line 36
    .line 37
    invoke-virtual {v0}, La3/b;->o()Lcom/google/android/gms/internal/ads/Qv;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj;->e:Lcom/google/android/gms/internal/ads/QJ;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v6, v0

    .line 48
    check-cast v6, Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/lj;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/lj;-><init>(Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uq;Lcom/google/android/gms/internal/ads/Qv;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mj;->a()Lcom/google/android/gms/internal/ads/lj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
