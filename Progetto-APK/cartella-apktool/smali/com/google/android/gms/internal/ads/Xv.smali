.class public final Lcom/google/android/gms/internal/ads/Xv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll3/b1;

.field public b:Ll3/d1;

.field public c:Ljava/lang/String;

.field public d:Ll3/Y0;

.field public e:Z

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/google/android/gms/internal/ads/M8;

.field public i:Ll3/h1;

.field public j:Li3/a;

.field public k:Li3/d;

.field public l:Ll3/U;

.field public m:I

.field public n:Lcom/google/android/gms/internal/ads/la;

.field public final o:Landroidx/leanback/widget/j;

.field public p:Z

.field public q:Z

.field public r:Lcom/google/android/gms/internal/ads/hs;

.field public s:Z

.field public t:Landroid/os/Bundle;

.field public u:Ll3/Y;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Xv;->m:I

    new-instance v0, Landroidx/leanback/widget/j;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/j;-><init>(ILandroidx/leanback/widget/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->o:Landroidx/leanback/widget/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Xv;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Xv;->q:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Xv;->s:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Yv;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ad unit must not be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 9
    .line 10
    const-string v1, "ad size must not be null"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 16
    .line 17
    const-string v1, "ad request must not be null"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/Yv;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Yv;-><init>(Lcom/google/android/gms/internal/ads/Xv;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
