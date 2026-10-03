.class public abstract Lg4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg4/q;

.field public static final b:Lf/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg4/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/q;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg4/j;->a:Lg4/q;

    .line 7
    .line 8
    new-instance v0, Lf/v;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Lf/v;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lg4/j;->b:Lf/v;

    .line 15
    .line 16
    return-void
.end method
