.class public final LC2/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw2/i;

.field public final b:Ljava/util/List;

.field public final c:Lcom/bumptech/glide/load/data/e;


# direct methods
.method public constructor <init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Argument must not be null"

    .line 9
    .line 10
    invoke-static {p1, v1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LC2/B;->a:Lw2/i;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LC2/B;->b:Ljava/util/List;

    .line 19
    .line 20
    iput-object p2, p0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 21
    .line 22
    return-void
.end method
