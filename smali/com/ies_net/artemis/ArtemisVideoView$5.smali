.class Lcom/ies_net/artemis/ArtemisVideoView$5;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/ArtemisVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$5;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mp",
            "percent"
        }
    .end annotation

    .line 448
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$5;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1, p2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1702(Lcom/ies_net/artemis/ArtemisVideoView;I)I

    return-void
.end method
