.class public final Le7/d$a;
.super LY/s;
.source "SourceFile"

# interfaces
.implements LD1/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public C0:Ljava/util/List;

.field public D0:Z

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LY/s;->P()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final S(Ljava/util/ArrayList;ZLz4/J;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le7/d$a;->C0:Ljava/util/List;

    .line 2
    .line 3
    iput-boolean p2, p0, Le7/d$a;->F0:Z

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Le7/d$a;->D0:Z

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Le7/d$a;->E0:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p3, p2, p1}, Landroidx/media3/ui/TrackSelectionView;->a(Ljava/util/Map;ZLjava/util/List;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Le7/d$a;->G0:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const v0, 0x7f0e0080

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b0212

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/media3/ui/TrackSelectionView;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Landroidx/media3/ui/TrackSelectionView;->setShowDisableOption(Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Le7/d$a;->E0:Z

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroidx/media3/ui/TrackSelectionView;->setAllowMultipleOverrides(Z)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Le7/d$a;->D0:Z

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroidx/media3/ui/TrackSelectionView;->setAllowAdaptiveSelections(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Le7/d$a;->C0:Ljava/util/List;

    .line 33
    .line 34
    iget-boolean v1, p0, Le7/d$a;->F0:Z

    .line 35
    .line 36
    iget-object v2, p0, Le7/d$a;->G0:Ljava/util/Map;

    .line 37
    .line 38
    iput-boolean v1, p2, Landroidx/media3/ui/TrackSelectionView;->R:Z

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p2, Landroidx/media3/ui/TrackSelectionView;->S:LK0/t;

    .line 42
    .line 43
    iput-object p0, p2, Landroidx/media3/ui/TrackSelectionView;->T:LD1/S;

    .line 44
    .line 45
    iget-object v1, p2, Landroidx/media3/ui/TrackSelectionView;->L:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p2, Landroidx/media3/ui/TrackSelectionView;->M:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 56
    .line 57
    .line 58
    iget-boolean v3, p2, Landroidx/media3/ui/TrackSelectionView;->O:Z

    .line 59
    .line 60
    invoke-static {v2, v3, v0}, Landroidx/media3/ui/TrackSelectionView;->a(Ljava/util/Map;ZLjava/util/List;)Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/media3/ui/TrackSelectionView;->c()V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method
