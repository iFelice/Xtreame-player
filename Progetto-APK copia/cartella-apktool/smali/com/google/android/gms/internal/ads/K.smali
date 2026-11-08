.class public final Lcom/google/android/gms/internal/ads/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcom/google/android/gms/internal/ads/Q9;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/util/List;

.field public p:Lcom/google/android/gms/internal/ads/mO;

.field public q:J

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:F

.field public w:[B

.field public x:I

.field public y:Lcom/google/android/gms/internal/ads/rL;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->n:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/K;->q:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->r:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->s:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/K;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/K;->v:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->x:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->z:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->A:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->B:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->E:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->F:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->e:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->f:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->g:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->h:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->k:Lcom/google/android/gms/internal/ads/Q9;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->l:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->m:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->n:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->p:Lcom/google/android/gms/internal/ads/mO;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/p0;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/K;->q:J

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->s:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->r:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->t:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->s:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->u:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->t:F

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->v:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->u:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->w:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->v:F

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->x:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->w:[B

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->y:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->x:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/K;->y:Lcom/google/android/gms/internal/ads/rL;

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->A:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->z:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->B:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->A:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->C:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->B:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->D:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->C:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->E:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->D:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->F:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->E:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->G:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->F:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->H:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->G:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->D:I

    .line 2
    .line 3
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 4
    .line 5
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/Q9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/va;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/K;->l:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 2
    .line 3
    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/p0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/p0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 2
    .line 3
    return-void
.end method
