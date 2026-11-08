.class public final Lf3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ll3/F;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "context cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 7
    .line 8
    iget-object v0, v0, Ll3/p;->b:Ll3/n;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/ab;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Ll3/k;

    .line 19
    .line 20
    invoke-direct {v2, v0, p1, p2, v1}, Ll3/k;-><init>(Ll3/n;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {v2, p1, p2}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ll3/F;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lf3/c;->a:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lf3/c;->b:Ll3/F;

    .line 36
    .line 37
    return-void
.end method
