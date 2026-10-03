.class public final LR0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field public final synthetic a:LR0/q;


# direct methods
.method public constructor <init>(LR0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR0/l;->a:LR0/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, LR0/l;->a:LR0/q;

    .line 2
    .line 3
    sget-object p2, LR0/q;->k:Lz4/c0;

    .line 4
    .line 5
    invoke-virtual {p1}, LR0/q;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, LR0/l;->a:LR0/q;

    .line 2
    .line 3
    sget-object p2, LR0/q;->k:Lz4/c0;

    .line 4
    .line 5
    invoke-virtual {p1}, LR0/q;->i()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
