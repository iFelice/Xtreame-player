.class public final LE3/w;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field public final synthetic a:LE3/d;


# direct methods
.method public constructor <init>(LE3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, LE3/w;->a:LE3/d;

    .line 2
    .line 3
    const/16 p1, 0x14

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    .line 3
    check-cast p3, LC3/p;

    .line 4
    .line 5
    check-cast p4, LC3/p;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, LE3/w;->a:LE3/d;

    .line 11
    .line 12
    iget-object p3, p1, LE3/d;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, LE3/d;->g:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
