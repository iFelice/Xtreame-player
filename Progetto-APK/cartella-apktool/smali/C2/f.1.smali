.class public final LC2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final G:[B

.field public final H:LC2/e;


# direct methods
.method public constructor <init>([BLC2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC2/f;->G:[B

    .line 5
    .line 6
    iput-object p2, p0, LC2/f;->H:LC2/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/f;->H:LC2/e;

    .line 2
    .line 3
    invoke-interface {v0}, LC2/e;->a()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lw2/a;
    .locals 1

    .line 1
    sget-object v0, Lw2/a;->G:Lw2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 1

    .line 1
    iget-object p1, p0, LC2/f;->H:LC2/e;

    .line 2
    .line 3
    iget-object v0, p0, LC2/f;->G:[B

    .line 4
    .line 5
    invoke-interface {p1, v0}, LC2/e;->A([B)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
