.class public final Lcom/google/android/gms/internal/ads/Nl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/android/gms/internal/ads/Nl;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/l9;

.field public final b:Lcom/google/android/gms/internal/ads/j9;

.field public final c:Lcom/google/android/gms/internal/ads/v9;

.field public final d:Lcom/google/android/gms/internal/ads/s9;

.field public final e:Lcom/google/android/gms/internal/ads/qa;

.field public final f:Lr/m;

.field public final g:Lr/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll/s1;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Ll/s1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/Nl;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Nl;-><init>(Ll/s1;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/google/android/gms/internal/ads/Nl;->h:Lcom/google/android/gms/internal/ads/Nl;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ll/s1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ll/s1;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/l9;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->a:Lcom/google/android/gms/internal/ads/l9;

    .line 9
    .line 10
    iget-object v0, p1, Ll/s1;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/j9;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->b:Lcom/google/android/gms/internal/ads/j9;

    .line 15
    .line 16
    iget-object v0, p1, Ll/s1;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/v9;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->c:Lcom/google/android/gms/internal/ads/v9;

    .line 21
    .line 22
    new-instance v0, Lr/m;

    .line 23
    .line 24
    iget-object v1, p1, Ll/s1;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lr/m;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lr/m;-><init>(Lr/m;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->f:Lr/m;

    .line 32
    .line 33
    new-instance v0, Lr/m;

    .line 34
    .line 35
    iget-object v1, p1, Ll/s1;->g:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lr/m;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lr/m;-><init>(Lr/m;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->g:Lr/m;

    .line 43
    .line 44
    iget-object v0, p1, Ll/s1;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/s9;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Nl;->d:Lcom/google/android/gms/internal/ads/s9;

    .line 49
    .line 50
    iget-object p1, p1, Ll/s1;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lcom/google/android/gms/internal/ads/qa;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nl;->e:Lcom/google/android/gms/internal/ads/qa;

    .line 55
    .line 56
    return-void
.end method
