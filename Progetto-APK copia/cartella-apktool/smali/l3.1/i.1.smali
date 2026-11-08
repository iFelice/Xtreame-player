.class public final Ll3/i;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ll3/d1;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ll3/n;


# direct methods
.method public constructor <init>(Ll3/n;Landroid/content/Context;Ll3/d1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll3/i;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Ll3/i;->c:Ll3/d1;

    .line 7
    .line 8
    iput-object p4, p0, Ll3/i;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Ll3/i;->e:Ll3/n;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ll3/i;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "search"

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
    .locals 4

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/i;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const v1, 0xe7f3e20

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ll3/i;->c:Ll3/d1;

    .line 12
    .line 13
    iget-object v3, p0, Ll3/i;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p1, v0, v2, v3, v1}, Ll3/X;->e2(LR3/a;Ll3/d1;Ljava/lang/String;I)Ll3/J;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ll3/i;->e:Ll3/n;

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
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x3

    .line 10
    iget-object v2, p0, Ll3/i;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, p0, Ll3/i;->c:Ll3/d1;

    .line 13
    .line 14
    iget-object v4, p0, Ll3/i;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual/range {v1 .. v6}, Ll3/a1;->a(Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cb;I)Ll3/J;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
