.class public final La/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a;


# instance fields
.field public final G:La/q;

.field public final synthetic H:La/x;


# direct methods
.method public constructor <init>(La/x;La/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La/w;->H:La/x;

    .line 5
    .line 6
    iput-object p2, p0, La/w;->G:La/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, La/w;->H:La/x;

    .line 2
    .line 3
    iget-object v1, v0, La/x;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu6/i;

    .line 6
    .line 7
    iget-object v2, p0, La/w;->G:La/q;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lu6/i;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, v2, La/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v3, 0x21

    .line 23
    .line 24
    if-lt v1, v3, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v2, La/q;->c:LC6/a;

    .line 28
    .line 29
    invoke-virtual {v0}, La/x;->c()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
