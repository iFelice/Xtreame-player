.class public Lcom/google/android/gms/internal/ads/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:Lcom/google/android/gms/internal/ads/uA;

.field public final e:Lcom/google/android/gms/internal/ads/uA;

.field public final f:Lcom/google/android/gms/internal/ads/uA;

.field public final g:Lcom/google/android/gms/internal/ads/Lf;

.field public h:Lcom/google/android/gms/internal/ads/uA;

.field public i:I

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ag;->c:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->d:Lcom/google/android/gms/internal/ads/uA;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->e:Lcom/google/android/gms/internal/ads/uA;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->f:Lcom/google/android/gms/internal/ads/uA;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/Lf;->a:Lcom/google/android/gms/internal/ads/Lf;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ag;->g:Lcom/google/android/gms/internal/ads/Lf;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->h:Lcom/google/android/gms/internal/ads/uA;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->i:I

    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->k:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/pg;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/pg;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->a:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/pg;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->b:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/pg;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ag;->c:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pg;->d:Lcom/google/android/gms/internal/ads/uA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->d:Lcom/google/android/gms/internal/ads/uA;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pg;->e:Lcom/google/android/gms/internal/ads/uA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->e:Lcom/google/android/gms/internal/ads/uA;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pg;->f:Lcom/google/android/gms/internal/ads/uA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->f:Lcom/google/android/gms/internal/ads/uA;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pg;->g:Lcom/google/android/gms/internal/ads/Lf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->g:Lcom/google/android/gms/internal/ads/Lf;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pg;->h:Lcom/google/android/gms/internal/ads/uA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->h:Lcom/google/android/gms/internal/ads/uA;

    iget v0, p1, Lcom/google/android/gms/internal/ads/pg;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ag;->i:I

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/pg;->k:Lcom/google/android/gms/internal/ads/zA;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->k:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pg;->j:Lcom/google/android/gms/internal/ads/UA;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->j:Ljava/util/HashMap;

    return-void
.end method
