.class public abstract LG4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lr/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LG4/a;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lr/f;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lr/m;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LG4/a;->b:Lr/f;

    .line 15
    .line 16
    return-void
.end method
