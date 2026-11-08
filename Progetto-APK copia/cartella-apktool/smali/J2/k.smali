.class public final LJ2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/j;


# instance fields
.field public final synthetic G:Le0/B;

.field public final synthetic H:LJ2/l;


# direct methods
.method public constructor <init>(LJ2/l;Le0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ2/k;->H:LJ2/l;

    .line 5
    .line 6
    iput-object p2, p0, LJ2/k;->G:Le0/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, LJ2/k;->H:LJ2/l;

    .line 2
    .line 3
    iget-object v0, v0, LJ2/l;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, p0, LJ2/k;->G:Le0/B;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
