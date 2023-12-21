.class Lcom/ies_net/artemis/ArtemisVideoView$4$1;
.super Ljava/lang/Object;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/ArtemisVideoView$4;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisVideoView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4$1;->this$1:Lcom/ies_net/artemis/ArtemisVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "whichButton"
        }
    .end annotation

    .line 433
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4$1;->this$1:Lcom/ies_net/artemis/ArtemisVideoView$4;

    iget-object p1, p1, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1300(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView$4$1;->this$1:Lcom/ies_net/artemis/ArtemisVideoView$4;

    iget-object p1, p1, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->access$1300(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView$4$1;->this$1:Lcom/ies_net/artemis/ArtemisVideoView$4;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisVideoView$4;->this$0:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-static {p2}, Lcom/ies_net/artemis/ArtemisVideoView;->access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
