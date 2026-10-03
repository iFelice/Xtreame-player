.class public final Ll3/h;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ll3/d1;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/cb;

.field public final synthetic f:Ll3/n;


# direct methods
.method public constructor <init>(Ll3/n;Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll3/h;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Ll3/h;->c:Ll3/d1;

    .line 7
    .line 8
    iput-object p4, p0, Ll3/h;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Ll3/h;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 11
    .line 12
    iput-object p1, p0, Ll3/h;->f:Ll3/n;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "app_open"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll3/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ll3/P0;

    .line 9
    .line 10
    invoke-direct {v0}, Ll3/I;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ll3/X;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v1, LR3/b;

    .line 2
    .line 3
    iget-object v0, p0, Ll3/h;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Ll3/h;->c:Ll3/d1;

    .line 9
    .line 10
    iget-object v3, p0, Ll3/h;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Ll3/h;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 13
    .line 14
    const v5, 0xe7f3e20

    .line 15
    .line 16
    .line 17
    move-object v0, p1

    .line 18
    invoke-interface/range {v0 .. v5}, Ll3/X;->Y2(LR3/a;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ll3/h;->f:Ll3/n;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/n;->a:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Ll3/a1;

    .line 7
    .line 8
    iget-object v5, p0, Ll3/h;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 9
    .line 10
    const/4 v6, 0x4

    .line 11
    iget-object v2, p0, Ll3/h;->b:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v3, p0, Ll3/h;->c:Ll3/d1;

    .line 14
    .line 15
    iget-object v4, p0, Ll3/h;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Ll3/a1;->a(Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
